package com.web.service;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import org.springframework.stereotype.Service;

import com.web.model.User;


@Service
public class UserService 
{
	List<User> userList=new ArrayList<User>();
	
	public UserService()
	{
		User user1=new User("abu", "qwerty12", "25/10/1995", "7893226953");
		User user2=new User("abbiee", "qwerty123", "03/09/1996", "9651546806");
		
		
		userList.add(user1);
		userList.add(user2);
	}
	
	public boolean addUser(User user)
	{
		userList.add(user);
		System.out.println(" Size of list "+userList.size());
		return true;
	}
	
	public List<User> displayAll()
	{
		return userList;
	}
	
	public User displayById(String userid)
	{
	
	Iterator<User> itr=userList.iterator();
	while(itr.hasNext())
	{
		User u=itr.next();
		
		if(u.getUserName().equals(userid))
			
			return u ;
		
	}
	return null;
	}

	public boolean deleteById(String id) 
	{
		User user=displayById(id);
		userList.remove(user);
		if(user!=null)
		return true;
		else
			return false;
	}

	public User updateById(String id)
	{
		User user=displayById(id);
		/*user.setUserName("Apuroop");
		user.setPassword("12345");
		user.setDob("23/01/1996");
		user.setMobile("755647898");*/
		userList.remove(user);
		return user;
	}

	public boolean saveUpdate(User user)
	{
		userList.add(user);
		
		return true;
	}

	
}
