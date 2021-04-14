package de.unidue.inf.is.stores;

import java.io.Closeable;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import de.unidue.inf.is.domain.Project;
import de.unidue.inf.is.domain.User;
import de.unidue.inf.is.utils.DBUtil;



public final class UserStore implements Closeable {

    private Connection connection;
    private boolean complete;


    public UserStore() throws StoreException {
        try {
            connection = DBUtil.getExternalConnection();
            connection.setAutoCommit(false);
        }
        catch (SQLException e) {
            throw new StoreException(e);
        }
    }


    public void addUser(User userToAdd) throws StoreException {
        try {
            PreparedStatement preparedStatement = connection
                            .prepareStatement("insert into user (firstname, lastname) values (?, ?)");
            preparedStatement.setString(1, userToAdd.getFirstname());
            preparedStatement.setString(2, userToAdd.getLastname());
            preparedStatement.executeUpdate();
        }
        catch (SQLException e) {
            throw new StoreException(e);
        }
    }


    public String geterstellername(String email) throws StoreException {
  		String name="none";
      	 try {
               PreparedStatement preparedStatement = connection.prepareStatement("select name from dbp050.benutzer where email='?'");
               preparedStatement.setString(1, email);
               
              ResultSet rs= preparedStatement.executeQuery();
               System.out.println(email); 
              
                
   				while(rs.next())
   				{      
   					  name=rs.getString(1);System.out.println(name+" "+rs.getString(1));
   				}  
           }
           catch (SQLException e) {
               throw new StoreException(e);
           }	
      
     return name;
      }
    
    public List<Project> getopenprojects() throws StoreException {
         List<Project> projects=new ArrayList<Project>();
         ResultSet rs;
    	try {
          
           Statement statement = connection.createStatement();
            rs=statement.executeQuery("select * from dbp050.projekt where status='offen'");
            }
        catch (SQLException e) {
            throw new StoreException(e);
        }
           
           if(rs == null) System.out.println("No result set.");
           else {
               try {
				while (rs.next()) {
					String name=geterstellername(rs.getString(6));
					   Project p=new Project(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getDouble(5),rs.getString(6),rs.getInt(7),rs.getInt(8),name);
					  projects.add(p);
				   }
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
           }
       
   return projects;
    }
    
    public List<Project> getcloseprojects() throws StoreException {
        List<Project> projects=new ArrayList<Project>();
        ResultSet rs;
   	try {
         
          Statement statement = connection.createStatement();
           rs=statement.executeQuery("select * from dbp050.projekt where status='geschlossen'");
           }
       catch (SQLException e) {
           throw new StoreException(e);
       }
          
          if(rs == null) System.out.println("No result set.");
          else {
              try {
				while (rs.next()) {
					String name=geterstellername(rs.getString(6));
					   Project p=new Project(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getDouble(5),rs.getString(6),rs.getInt(7),rs.getInt(8),name);
					  projects.add(p);
				   }
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
          }
      
  return projects;
   }
    
    
    
    public void complete() {
        complete = true;
    }


    @Override
    public void close() throws IOException {
        if (connection != null) {
            try {
                if (complete) {
                    connection.commit();
                }
                else {
                    connection.rollback();
                }
            }
            catch (SQLException e) {
                throw new StoreException(e);
            }
            finally {
                try {
                    connection.close();
                }
                catch (SQLException e) {
                    throw new StoreException(e);
                }
            }
        }
    }

}
