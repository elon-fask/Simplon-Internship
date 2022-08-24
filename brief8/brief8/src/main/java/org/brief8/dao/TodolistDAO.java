package org.brief8.dao;

import java.sql.Connection;

import org.brief8.models.ToDoList;
import org.brief8.models.User;

public interface TodolistDAO {
	
	public abstract void addTask(ToDoList toDoList);
	public abstract void editTask(ToDoList toDoList);
	public abstract void deletTask(ToDoList toDoList);
	public abstract void showTask(ToDoList toDoList);
}

