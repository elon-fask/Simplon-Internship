package org.brief8.models;

public class Category {

	public String categoryName;
	public String catDesc;

	public Category(String categoryName, String catDesc) {
		super();
		this.categoryName = categoryName;
		this.catDesc = catDesc;
	}
	
	public Category() {
		super();
	}

	public String getCategoryName() {
		return categoryName;
	}

	public void setCategoryName(String categoryName) {
		this.categoryName = categoryName;
	}

	public String getCatDesc() {
		return catDesc;
	}

	public void setCatDesc(String catDesc) {
		this.catDesc = catDesc;
	}

	@Override
	public String toString() {
		return "Category [categoryName=" + categoryName + ", catDesc=" + catDesc + "]";
	}


}
