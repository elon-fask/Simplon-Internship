package com.simplilearn.Brief6;

import java.util.List;
import java.util.Scanner;


public class main {

	public static void main(String[] args) {
		carDao CarDao = new carDaoImp();
		
		
		Scanner input = new Scanner(System.in);
		/**/
		//CarDao.createCar(Car);
		//CarDao.createCategory(Category);
		//getCarById(CarDao, "A31");
		//getCatgById(CarDao, 123);
		//getAllCatgInfo(CarDao);
		//getAllCarInfo(CarDao);
		//CarDao.deleteCarById("A34");
		//CarDao.deleteCatgById(123);
		//CarDao.updateCarPriceById(4.0, "A31");
		//CarDao.updateCatgNameById("DEKAPOTABLE", 123);
		//getCarByIdCatg(CarDao, 124);
		System.out.println("choisir entre \n\t1- Categorie \n\t2- Car");
		int mode = input.nextInt();
		while (mode !=1 && mode !=2 ) {
			System.out.println("YOU HAVE ONE THESE CHOISE 1 OR 2!!!!!");
			System.out.println("choisir entre \n\t1- Categorie \n\t2- Car");
			int mode1 = input.nextInt();
			mode = mode1;
		}
		switch (mode) {
		case 1:
			System.out.println("choisir entre \n\t1- Create Categorie \n\t2- Show All Categorie \n\t3- Show One Categorie "
					+ "\n\t4- Update Name Of Categorie \n\t5- Delete Categorie \n\t0- Exit");
			int CRUD = input.nextInt();
			do {
				switch (CRUD) {
				case 1:
					System.out.println("Give Me ID Of Category");
					int IDCATG = input.nextInt();
					System.out.println("Give Me Name Of Category");
					String NOM_CATG = input.next();
					category Category = getCatgory(IDCATG, NOM_CATG);
					CarDao.createCategory(Category, IDCATG, NOM_CATG);
					break;
				case 2:
					getAllCatgInfo(CarDao);
					break;
				case 3:
					System.out.println("Give Me ID Of Category");
					int IdOfCatg = input.nextInt();
					getCatgById(CarDao, IdOfCatg);
					break;
				case 4:
					System.out.println("Give Me ID Of Category");
					int CatgId = input.nextInt();
					System.out.println("Give Me Name Of Category");
					String CatgNameUpd = input.next();
					CarDao.updateCatgNameById(CatgNameUpd, CatgId);
					break;
				case 5:
					System.out.println("Give Me ID Of Category");
					int CatgIddel = input.nextInt();
					CarDao.deleteCatgById(CatgIddel);
					break;
				case 0:
					System.exit(0);
					break;
				}
				
			} while (CRUD == 0);
			
		case 2:

			System.out.println("choisir entre \n\t1- Create Car \n\t2- Show All Cars \n\t3- Show One Car "
					+"\n\t4- Show Cars By One Category \n\t5- Update Price Of Car \n\t6- Delete Car");
			int CRUD2 = input.nextInt();
			while (CRUD2 !=1 && CRUD2 !=2 && CRUD2 != 3 && CRUD2 != 4 && CRUD2 != 5 && CRUD2 != 6 ) {
				System.out.println("choisir entre \n\t1- Create Car \n\t2- Show All Cars \n\t3- Show One Car "
						+"\n\t4- Show Cars By One Category \n\t5- Update Price Of Car \n\t6- Delete Car");
				int CRUD3 = input.nextInt();
				CRUD2 = CRUD3;
			}
			switch (CRUD2) {

			case 1:
				System.out.println("INSERT Matricule");
				String MAT = input.next ();
				System.out.println("INSERT COMMERTIAL NAME");
				String COME_NOM = input.next ();
				System.out.println("INSERT KM");
				double KM = input.nextDouble();
				System.out.println("INSERT MANIFACTURE");
				String MANIFACT = input.next ();
				System.out.println("INSERT PRICE");
				double PRICE = input.nextDouble();
				System.out.println("INSERT CATEGORY ID");
				int IDCATG = input.nextInt();
				car Car= getCar(MAT , COME_NOM, KM, MANIFACT, PRICE, IDCATG);
				CarDao.createCar(Car, MAT, COME_NOM, KM, MANIFACT, PRICE, IDCATG);
				break;
			case 2:
				getAllCarInfo(CarDao);
				break;
			case 3:
				System.out.println("Give Me Matricule");
				String IdOfCar = input.next ();
				getCarById(CarDao, IdOfCar);
				break;
			case 4:
				/*System.out.println("Give Me ID Of Category");
				int IdOfCar = input.nextInt();
				getCarById(CarDao, IdOfCar);*/
				break;
			case 5:
				System.out.println("Give Me Matricule");
				String CatgId = input.next();
				System.out.println("Give Me The New Price");
				int CarPriceUpd = input.nextInt();
				CarDao.updateCarPriceById(CarPriceUpd, CatgId);
				break;
			case 6:
				System.out.println("Give Me Matricule");
				String CarIddel = input.next();
				CarDao.deleteCarById(CarIddel);
				break;
			case 0:
				System.out.println("BY BY");
				System.exit(0);
				break;
			}
			
		}
	}
	
	private static car getCar(String MAT,String COME_NOM, double KM, String MANIFACT, double PRICE, int IDCATG) {
		car Car = new car();
		Car.setMatricule(MAT);
		Car.setCom_Name(COME_NOM);
		Car.setKilometrage(KM);
		Car.setManiFacture(MANIFACT);
		Car.setPrice(PRICE);
		Car.setId_Catg(IDCATG);
		return Car;
	}
	
	private static category getCatgory(int IDCATG,String NOM_CATG) {
		category Category = new category();
		Category.setId_Catg(IDCATG);
		Category.setNom_Catg(NOM_CATG);
		return Category;
	}
	
	
	
	private static void getCarById(carDao CarDao, String Matricule) {
		car car2 = CarDao.getCarById(Matricule);
		if(car2 != null){
			System.out.println(car2);
		}else{
			System.out.println("Car does not exist..");
		}
	}
	
	private static void getCatgById(carDao CarDao, int id_catg) {
		category catg2 = CarDao.getCatgById(id_catg);
		if(catg2 != null){
			System.out.println(catg2);
		}else{
			System.out.println("Category does not exist..");
		}
	}
	
	private static void getAllCatgInfo (carDao CarDao) {
		List<category> CatgList = CarDao.getAllCatgInfo();
		for (category Category : CatgList) {
			System.out.println(Category);
		}
	}
	
	private static void getAllCarInfo (carDao CarDao) {
		List<car> CarList = CarDao.getAllCarInfo();
		for (car Car : CarList) {
			System.out.println(Car);
		}
	}
	
	
}



