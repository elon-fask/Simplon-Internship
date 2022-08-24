package com.simplilearn.Brief6;
import java.util.List;

public interface carDao {
	public abstract void createCar(car Car,String MAT,String COME_NOM, double KM, String MANIFACT, double PRICE, int IDCATG);
	public abstract car getCarById(String Matricule);
	public abstract void updateCarPriceById(double newPrice,String Matricule);
	public abstract void deleteCarById(String Matricule);
	public abstract List<car> getAllCarInfo();
	
	
	public abstract void createCategory(category Category,int IDCATG,String NOM_CATG);
	public abstract category getCatgById(int id_catg);
	public abstract List<category> getAllCatgInfo();
	public abstract void deleteCatgById(Integer id_Catg);
	public abstract void updateCatgNameById(String newName,int id_Catg);
}
