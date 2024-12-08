/* 
i have a business that sells bottled drinks i want to record all the data for my drinks
there's name of the drink, color, calories per bottle and ounces
there's a few type of bottles, there's cans, plastic, glass or carton
we also need to know the date each drink was produced, and the best by date 
also we need to know how to store it either it has to be refrigerated, not refrigerated, or refrigerated after opening
in order to make sure each drink was sold when it was still fresh we like to record the date sold
and of course the price


Questions
Q: can the data be entered before it was sold to a customer?
A: yes, we enter the date sold as we sell it

Q: how many ounces does the biggest bottle hold?
A: 36

Q: could calories be zero?
A: yes- seltzer has 0 calories

Q: what's the range of the prices?
A: 5.50  to 30 dollars

Q: is there a specific amount of time in between the production date and best by date?
A: yes. for drinks that are refrigerated the best by date is 5 weeks after the production date
	for drinks that don't have to be refrigerated, the best by date is 70 days after the production date
	for drinks that have to be refrigerated after opening, the best by date is 2 months after the production date


Reports:
1) we would like to know the average days each type of drink sits in our warehouse before it was sold
2) for the FDA show a list of the drink name, date produced, date sold, best by date and how many days before the best by date was the drink sold
3) for a advertisement show me one column formated like this: drink, number of calories the word calories, number of ounces oz: refrigerated or not (best by date)
4) if the sold date is null, then how many days there is left to sell the drink before the expiration date


sample data in this order: name of the drink, color, calories, ounces, type of bottle, date produced, date sold, refrigerated or not
Coke, brown, 300, 20, plastic, 12/28/2005, 1/24/2006, not refrigerated
orange juice, orange, 200, carton, 2/12/2018, 4/11/2018, refrigerated
beer, brown, 100, 16, glass, 4/21/2019, 6/04/2015/, not refrigerated
vitamin water, 225, 24, plastic, 6/11/2023, 8/21/2023, not refrigerated
Coke, brown, 300, 20, can, 3/12/2019, 4/28/2019, not refrigerated
lemonade, 150, 30, plastic, 4/28/2014, 5/28/2014, refrigerated
grape juice, 350, 8, plastic, 5/23/2019, 7/18/2019, refrigerate after opening
apple juice, 300, 12, plastic, 7/02/2014, 8/13/2014, refrigerate after opening
seltzer, 0, 18, plastic, 11/05/2018, 11/28/2018, not refrigerated
sprite, 150, 8, can, 2/8/2022, 4/22/2022, not refrigerated
vitamin water, 225, 24, plastic, 7/11/2016, 8/21/2016, not refrigerated
coffee, 200, 8, plastic, 11/02/2024, null, refrigerated
milk, 175, 36, carton, 10/29/2024, refrigerated
*/
