package addcart;


import java.sql.Connection;
import java.sql.Statement;
import java.sql.ResultSet;
import connect.MySqlCon;

public class ProductSearch  
{
         private String pid;
	 
	 private String pcid;
	 private String pname;
	 private String pimgurl;
	 private String pdesc;
	 private String price;
	 private String pquantity;
	 private String sid;
	 


	
	 public String getPid() {
		return pid;
	}
	public void setPid(String pid) {
		this.pid = pid;
	}
	
	public String getPcid() {
		return pcid;
	}
	public void setPcid(String pcid) {
		this.pcid = pcid;
	}
	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
	public String getPimageurl() {
		return pimgurl;
	}
	public void setPimageurl(String pimgurl) {
		this.pimgurl = pimgurl;
	}
	public String getPdescription() {
		return pdesc;
	}
	public void setPdescription(String pdesc) {
		this.pdesc = pdesc;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public String getPquantity() {
		return pquantity;
	}
	public void setPquantity(String pquantity) {
		this.pquantity = pquantity;
	}
	
	public String getSid() {
		return sid;
	}
	public void setSid(String sid) {
		this.sid = sid;
	}

  /*   
    public int insert()
{
           
                         int n=0;
        
        try{
 

              Connection con=new MySqlCon().mysqlCon();
              PreparedStatement  ps= con.prepareStatement("insert into MOVIES(m_id,m_name,m_director,m_actor,m_actress,m_image,m_trailer) values(?,?,?,?,?,?,?)");
      ps.setString(1, movieId);
      ps.setString(2, movieName);
      ps.setString(3, movieDirector);
      ps.setString(4, movieActor);
      ps.setString(5, movieActress);
      ps.setString(6, movieImage);
      ps.setString(7, movieTrailer);
      n=ps.executeUpdate();
      con.close();
      }
      catch(Exception e){
      e.printStackTrace();
      }
  return n;
  }

*/

 public  int getMNameResult(String productName)
{
     int c=0;
     int r=0;
    
     try{
         Connection con=new MySqlCon().mysqlCon();
         String sql="select * from subproduct where pname like'"+productName+"%'";
         Statement st=con.createStatement();
         ResultSet rs=st.executeQuery(sql);
         /*if(!rs.next())
         {
            r=-1;
         } */     
         while(rs.next())
{
            pid=rs.getString("pid");
            
             pcid=rs.getString("pcid");
             pname=rs.getString("pname");
            pimgurl=rs.getString("pimgurl");  
            pdesc=rs.getString("pdesc");  
             price=rs.getString("price");
           pquantity=rs.getString("pquantity");
                 
          sid=rs.getString("sid");

         c=1;
         
         }
            System.out.println(c);
           System.out.println(this.pname);
         st.close();
         con.close();
     }
     catch(Exception e){
     e.printStackTrace();}
 return r;
 }

/*
  public  int getMIdResult(String movieId){
     int c=0;
     int r=0;
     String msg;
     try{
         Connection con=new MySqlCon().mysqlCon();
         System.out.println(movieName);
         String sql="select * from movies where m_Id='"+movieId+"'";
         Statement st=con.createStatement();
         ResultSet rs = st.executeQuery(sql);
               
         while(rs.next()){
            movieId=rs.getString("m_id");
            this.movieName=rs.getString("m_name");
            movieDirector=rs.getString("m_director");
            movieActor=rs.getString("m_actor");
            movieActress=rs.getString("m_actress");
            movieImage=rs.getString("m_image");
            movieTrailer=rs.getString("m_Trailer");
             c=1;
         
         }
            System.out.println(c);
          st.close();
         con.close();
     }
     catch(Exception e){
     e.printStackTrace();}
 return r;
 }
 */
   
}
       
            
