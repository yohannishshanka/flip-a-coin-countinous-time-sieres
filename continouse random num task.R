f=function(number_of_step,variance,initial_position){
   position=c()
   position=c(position,initial_position)
   time_point=seq(0,variance*number_of_step,by=variance) 
   
   random_numbers=rnorm(number_of_step,mean =0,sd=sqrt(variance) )
   a=2
   while(a<=number_of_step+1){
     position[a]=position[a-1]+random_numbers[a-1]
     a=a+1
   }
   all_random_numbers=c(0,random_numbers)
    df=data.frame(time_point,all_random_numbers,position) 
    print(df)
    plot(x=time_point,y=position)
}
f(10,0.01,100)


      