create database ola;
use ola;

select Count(*) from olasheet;

# Retrieve all successfull booking.
select * from olasheet where  Booking_status = "Success";

#find the average ride distance for each vehicle type?
select vehicle_type, avg(ride_distance)as Average_Rides from olasheet group by vehicle_type;  

#get the total number of canceled rides by customer
select count(Canceled_Rides_by_Customer) from olasheet;

# List the top 5 customer who booked the highest Nmber of rides?
select Customer_ID, count(Booking_ID) as Total_rides from olasheet group by  Customer_ID order by Total_rides desc limit 5; 

# Get the number of rides canceled by drivers due to personal and car-related issues.
select count(*) from olasheet where Canceled_Rides_by_Driver = "personal & car related issue";

#Find the max and min driver rating for prime sedan bookings.
select min(Driver_Ratings) , max(Driver_Ratings) from olasheet  where Vehicle_Type = "Prime Sedan";

# find all rides where payment was made using upi?
select * from olasheet where Payment_Method = 'Upi';

#find the avergae customer rating per vehicle type;
select Vehicle_Type, avg(Customer_Rating)as Averg_Rate from olasheet group by Vehicle_Type;

# Calculate the total booking value of rides completed successfully.

select sum(Booking_Value) from olasheet where Booking_Status = "success";

# list all incomplete rides along with the resone.
select Booking_ID,Incomplete_Rides, Incomplete_Rides_Reason from olasheet where Incomplete_Rides = "yes" ;


