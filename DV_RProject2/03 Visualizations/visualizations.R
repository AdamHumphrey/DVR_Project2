##Customers##
##If you look to the left, their is Count Legend, with an example # of Customers from Califronia being 10.

ggplot(customers, aes(x = CUSTOMER_STATE)) +
  geom_bar(width = 1, colour = "black") + coord_polar()

##Items##
##This is a bar graph showing the how many albums a certain artist has for sale.

ggplot(items, aes(x=ARTIST)) + geom_bar() + ylab("Number of Albums on sale") + xlab("Artist") + coord_flip()

##Orders##
##This is a bar graph showing the number of orders placed by a customer with a certain customer id.

ggplot(orders, aes(x=CUSTOMER_ID)) + geom_bar(fill="white",colour="darkgreen") + ylab("Number of Orders")+ scale_x_discrete("Customer ID")

##Order details##
#This graph shows the frequency of which each quantity of each item was sold.
#EX: One copy of Umani in Concert was ordered 10 times, and two copies of Umani in Comcers were ordered once.

ggplot(order_details, aes(x = ITEM_ID, y = ORDER_QTY) ) + stat_sum(aes(group = 1, color = ITEM_ID))