package dao;

import java.util.ArrayList;
import java.util.List;

import pojo.Country;

public class UserDao {

	public List<Country> getCountries() {
		List<Country> c = new ArrayList<Country>();
		Country count1 = new Country();
		count1.setId(1);
		count1.setName("India");
		c.add(count1);

		Country count2 = new Country();
		count2.setId(1);
		count2.setName("Australia");
		c.add(count2);

		Country count3 = new Country();
		count3.setId(1);
		count3.setName("Canada");
		c.add(count3);

		return c;
	}
}
