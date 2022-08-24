package com.simplilearn.Brief6;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;




public class carDaoImp implements carDao{

	@Override
	public void createCar(car Car, String MAT,String COME_NOM, double KM, String MANIFACT, double PRICE, int IDCATG) {
		String SQL = "INSERT INTO Car(Matricule,Com_Name,Kilometrage,ManiFacture,Price,Id_Catg) VALUES(?,?,?,?,?,?)";
		try(
				Connection connection = ConnectDB.getConnection();
				PreparedStatement ps = connection.prepareStatement(SQL)
			) {
			
			ps.setString(1, Car.getMatricule());
			ps.setString(2, Car.getCom_Name());
			ps.setDouble(3, Car.getKilometrage());
			ps.setString(4, Car.getManiFacture());
			ps.setDouble(5, Car.getPrice());
			ps.setDouble(6, Car.getId_Catg());
			
			int executeUpdate = ps.executeUpdate();
			
			if(executeUpdate ==1){
				System.out.println("Car is created...");
				//ps.close();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}

	@Override
	public car getCarById(String Matricule) {
		car Car = null;
		String SQL = "SELECT * FROM Car WHERE Matricule=? ";
		try(
				Connection connection = ConnectDB.getConnection();
				PreparedStatement ps = connection.prepareStatement(SQL)
			) {
			
			ps.setString(1, Matricule);
			
			ResultSet rs = ps.executeQuery();
			if (rs.next()) {
				String Mat = rs.getString("Matricule");
				String ComNom = rs.getString("Com_Name");
				Double Km = rs.getDouble("Kilometrage");
				String ManiFact = rs.getString("ManiFacture");
				Double Price = rs.getDouble("Price");
				int CatId = rs.getInt("Id_Catg");

				
				Car = new car();
				Car.setMatricule(Mat);
				Car.setCom_Name(ComNom);
				Car.setKilometrage(Km);
				Car.setManiFacture(ManiFact);
				Car.setPrice(Price);
				Car.setId_Catg(CatId);
				
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	
		return Car;
	}

	@Override
	public void updateCarPriceById(double newPrice, String Matricule) {
		String SQL = "UPDATE car set price=? WHERE Matricule=?;";
		try(
				Connection connection = ConnectDB.getConnection();
				PreparedStatement ps = connection.prepareStatement(SQL)
			) {
			
			ps.setDouble(1,newPrice);
			ps.setString(2,Matricule);
			
			int executeUpdate = ps.executeUpdate();
			
			if(executeUpdate ==1){
				System.out.println("Car price is updated..");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}

	@Override
	public void deleteCarById(String Matricule) {
		String SQL = "DELETE FROM car WHERE Matricule=?;";
		try(
				Connection connection = ConnectDB.getConnection();
				PreparedStatement ps = connection.prepareStatement(SQL)
			) {
			
			ps.setString(1,Matricule);
			
			int executeUpdate = ps.executeUpdate();
			
			if(executeUpdate ==1){
				System.out.println("Car is deleted with ID::"+Matricule);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}

	@Override
	public List<car> getAllCarInfo() {
		List<car> CarList = new ArrayList<>();
		String SQL = "SELECT * FROM car";
		try(
				Connection connection = ConnectDB.getConnection();
				PreparedStatement ps = connection.prepareStatement(SQL)
			) {
			
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				String Mat = rs.getString("Matricule");
				String ComNom = rs.getString("Com_Name");
				Double Km = rs.getDouble("Kilometrage");
				String ManiFact = rs.getString("ManiFacture");
				Double Price = rs.getDouble("Price");
				int CatId = rs.getInt("Id_Catg");

				
				car Car = new car();
				Car.setMatricule(Mat);
				Car.setCom_Name(ComNom);
				Car.setKilometrage(Km);
				Car.setManiFacture(ManiFact);
				Car.setPrice(Price);
				Car.setId_Catg(CatId);

				
				CarList.add(Car);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return CarList;
	}

	@Override
	public void createCategory(category Category, int IDCATG,String NOM_CATG) {
		String SQL = "INSERT INTO Category(id_Catg,Nom_Catg) VALUES(?,?)";
		try(
				Connection connection = ConnectDB.getConnection();
				PreparedStatement ps = connection.prepareStatement(SQL)
			) {
			
			ps.setInt(1, Category.getId_Catg());
			ps.setString(2, Category.getNom_Catg());
			
			int executeUpdate = ps.executeUpdate();
			
			if(executeUpdate ==1){
				System.out.println("Category is created...");
				//ps.close();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}
	
	@Override
	public category getCatgById(int id_catg) {
		category Category = null;
		String SQL = "SELECT * FROM category WHERE id_Catg=? ";
		try(
				Connection connection = ConnectDB.getConnection();
				PreparedStatement ps = connection.prepareStatement(SQL)
			) {
			
			ps.setInt(1, id_catg);
			
			ResultSet rs = ps.executeQuery();
			if (rs.next()) {
				int Catg_Id = rs.getInt("id_Catg");
				String Catg_Nom = rs.getString("Nom_Catg");


				
				Category = new category();
				Category.setId_Catg(Catg_Id);
				Category.setNom_Catg(Catg_Nom);
				
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	
		return Category;
	}
	
	@Override
	public List<category> getAllCatgInfo() {
		List<category> CatgList = new ArrayList<>();
		String SQL = "SELECT * FROM category";
		try(
				Connection connection = ConnectDB.getConnection();
				PreparedStatement ps = connection.prepareStatement(SQL)
			) {
			
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				int Catg_Id = rs.getInt("id_Catg");
				String Catg_Nom = rs.getString("Nom_Catg");

				
				category Category = new category();
				Category.setId_Catg(Catg_Id);
				Category.setNom_Catg(Catg_Nom);

				
				CatgList.add(Category);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return CatgList;
		
	}
	
	@Override
	public void deleteCatgById(Integer id_Catg) {
		String SQL = "DELETE FROM category WHERE id_Catg=?;";
		try(
				Connection connection = ConnectDB.getConnection();
				PreparedStatement ps = connection.prepareStatement(SQL)
			) {
			
			ps.setInt(1,id_Catg);
			
			int executeUpdate = ps.executeUpdate();
			
			if(executeUpdate ==1){
				System.out.println("Category is deleted with ID::"+id_Catg);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}
	
	@Override
	public void updateCatgNameById(String newName, int id_Catg) {
		String SQL = "UPDATE category set Nom_Catg=? WHERE id_Catg=?;";
		try(
				Connection connection = ConnectDB.getConnection();
				PreparedStatement ps = connection.prepareStatement(SQL)
			) {
			
			ps.setString(1,newName);
			ps.setInt(2,id_Catg);
			
			int executeUpdate = ps.executeUpdate();
			
			if(executeUpdate ==1){
				System.out.println("Category name is updated..");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}


}
