package com.prjt;

import java.util.Scanner;

public class Salary1 {

	public static void main(String[] args) {
		user();
		calSalary();

	}

	public static void user() {
		String name;
		Scanner scn = new Scanner(System.in);
		System.out.println("Enter your name :");
		name = scn.nextLine();
		System.out.println("Hello " + name);
	}

	public static void calSalary() {
		double rate, workedHour;
		int paymentMode;
		double salary1 = 0;
		double salary2;
		double salary;

		Scanner scn = new Scanner(System.in);
		System.out.println("Chose a payment mode ");
		System.out.println("1: Weekly payments");
		System.out.println("2: Monthly payments");
		;
		paymentMode = scn.nextInt();

		System.out.println(" Enter rate by hour ");
		rate = scn.nextDouble();
		if (rate < 25) {
			System.out.println("Rate is inferior then 20");
		} 
		System.out.println("Worked Hours: ");
		workedHour = scn.nextDouble();
				
		// Conditions of calculation :
		// monthly payment
		if (paymentMode == 2) {
			if (workedHour <= 200) {
				salary1 = rate * workedHour;
				System.out.println("Your Salary is " + salary1);
			} else if (workedHour > 200 ) { 
				System.out.println(" worked hour must be inferier then 200 ");
			}
		}
		
		// Weekly payment :
		else if (paymentMode == 1)
			if (rate >= 25) {
				if (workedHour <= 40) {
					salary1 = rate * workedHour;
					System.out.println("Your Salary is " + salary1);
				}
				if (workedHour <= 50) {
					if (workedHour > 40) {
						salary = 40 * rate + (workedHour - 40) * rate * 1.5;
						System.out.println("Your Salary is " + salary);
					}
				} else {
					System.out.println("Worked Hour must be less than 50h ");
				}
			} 
		}
	}
}
