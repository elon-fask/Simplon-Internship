package org.brief8.models;

public class ToDoList {
	
	public String taskTitle;
	public String taskDesc;
	public String taskText;
	public String state;
	public String deathLine;

	public ToDoList(String taskTitle, String taskDesc, String taskText, String state, String deathLine) {
		super();
		this.taskTitle = taskTitle;
		this.taskDesc = taskDesc;
		this.taskText = taskText;
		this.state = state;
		this.deathLine = deathLine;
	}
	public ToDoList() {
		super();
	}
	
	public String getTaskTitle() {
		return taskTitle;
	}
	public void setTaskTitle(String taskTitle) {
		this.taskTitle = taskTitle;
	}
	public String getTaskDesc() {
		return taskDesc;
	}
	public void setTaskDesc(String taskDesc) {
		this.taskDesc = taskDesc;
	}
	public String getTaskText() {
		return taskText;
	}
	public void setTaskText(String taskText) {
		this.taskText = taskText;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getDeathLine() {
		return deathLine;
	}
	public void setDeathLine(String deathLine) {
		this.deathLine = deathLine;
	}
	@Override
	public String toString() {
		return "ToDoList [taskTitle=" + taskTitle + ", taskDesc=" + taskDesc + ", taskText=" + taskText
				+ ", state=" + state + ", deathLine=" + deathLine + "]";
	}
	
	
	
	
	
}
