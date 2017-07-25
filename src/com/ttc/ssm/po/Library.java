package com.ttc.ssm.po;

/**
 * @author Loke.Z
 *
 */
public class Library {

	private int libraryUserId;
	private String libraryType;
	private int libraryVersions;
	private int libraryQuestions;

	public Library()
	{
		
	}
	
	public Library(Library record)
	{
		libraryUserId=record.getLibraryUserId();
		libraryType=record.getLibraryType();
		libraryVersions=record.getLibraryVersions();
		libraryQuestions=record.getLibraryQuestions();
	}
	public int getLibraryUserId() {
		return libraryUserId;
	}

	public void setLibraryUserId(int libraryUserId) {
		this.libraryUserId = libraryUserId;
	}

	public String getLibraryType() {
		return libraryType;
	}

	public void setLibraryType(String libraryType) {
		this.libraryType = libraryType;
	}

	public int getLibraryVersions() {
		return libraryVersions;
	}

	public void setLibraryVersions(int libraryVersions) {
		this.libraryVersions = libraryVersions;
	}

	public int getLibraryQuestions() {
		return libraryQuestions;
	}

	public void setLibraryQuestions(int libraryQuestions) {
		this.libraryQuestions = libraryQuestions;
	}

}
