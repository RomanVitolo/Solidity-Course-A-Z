pragma solidity >=0.4.0 <=0.8.11;

contract time_units{
    
    // Unidades de Tiempo
    //uint public actual_Time = now;
    uint public one_minutes = 1 minutes;
    uint public two_hours = 2 hours;
    uint public fifty_days = 50 days;
    uint public one_week = 1 weeks;

    function MoreSeconds() public view returns(uint){
       // return now + 50 seconds;
    }

     function MoreDays() public view returns(uint){
       // return now + 5 days;
    }

     function MoreHours() public view returns(uint){
        //return now + 2 hours;
    }

     function MoreWeeks() public view returns(uint){
        //return now + 2 weeks;
    }

     function MoreMinutes() public view returns(uint){
        //return now + 60 minutes;
    }

}