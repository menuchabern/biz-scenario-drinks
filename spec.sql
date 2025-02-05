/* 
i have a business that sells bottled drinks i want to record all the data for my sales
there's name of the drink, the date each drink was produced, and the best by date 
in order to make sure each drink was sold when it was still fresh we like to record the date sold
and of course the price


Questions
Q: can the data be entered before it was sold to a customer?
A: yes, we enter the date sold as we sell it

Q: what's the range of the prices?
A: 5.50  to 30 dollars

Q: is there a specific amount of time in between the production date and best by date?
A: yes. for drinks that are refrigerated the best by date is 5 weeks after the production date
	for drinks that don't have to be refrigerated, the best by date is 70 days after the production date
	for drinks that have to be refrigerated after opening, the best by date is 60 months after the production date


Reports:
1) we would like to know the average days each type of drink sits in our warehouse before it was sold
2) for the FDA show a list of the drink name, date produced, date sold, best by date, and how many days before the best by date was the drink sold
3) for a advertisement show me one column formated like this: drinkname, average time from the date sold to the experation date 
4) if the sold date is null, then how many days there is left to sell the drink before the expiration date


sample data in this order: name of the drink, date produced, date sold 
Coke, 12/28/2005, 1/24/2006
orange juice, 2/12/2018, 4/11/2018
beer, 4/21/2019, 6/04/2015/
vitamin water, 6/11/2023, 8/21/2023
Coke, 3/12/2019, 4/28/2019
lemonade, 4/28/2014, 5/28/2014
grape juice, 5/23/2019, 7/18/2019
apple juice, 7/02/2014, 8/13/2014
seltzer, 11/05/2018, 11/28/2018
sprite, 2/8/2022, 4/22/2022
vitamin water, 7/11/2016, 8/21/2016
coffee, 11/02/2024, null
milk, 10/29/2024, null
*/
