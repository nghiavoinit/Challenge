import Array "mo:base/Array";
import List "mo:base/List";
actor {
    //challenge 1
    public func add(n : Nat, m :Nat): async Nat{
        return (n+m);
    };
    //challenge 2
    public func square(n : Nat ): async Nat{
        return (n*n);
    };
    //challenge 3
    public func days_to_second(n :Nat): async Nat{
        return (n*24*60*60);
    };
    //challenge 4
        //initialize a mutable var counter
        var counter :Nat=0;
        //create increment_counter
        public func increment_counter (n:Nat): async Nat {
            counter += n;
            return counter;
        };
        //create clear_counter
        public func clear_counter():async Text{
            counter :=0;
            return "clearing counter.....\n counter: 0";
        };
    //challenge 5
    public func divide(n:Nat ,m :Nat): async Bool{
        if(n % m == 0){
           return(true);
        }
        else{
            return(false);
        }
    };
    //challenge 6
    public func is_even(n:Nat): async Bool{
        if(n%2==0){
            return(true);
        }
        else{
            return(false);
        }
    };
    //challenge 7
    
    public func sum_of_array(a:[Nat]): async Nat{
        var sum:Nat = 0;
        for(i in a.vals()){
            sum+= i;
        };
        return sum;
    };
    //challenge 8
    public func maximum(a:[Nat]): async Nat{
        var max:Nat = 0;
        for( i in a.vals()){
            if(i > max){
                max:=i;
            }
        };
        return max;
    };
    //challenge 9
    /*public func remove_from_array(a:[Nat], n: Nat): async [Nat]{
        var list: List.nil<Nat> = List.List<Nat>([]);
        for( i in a.vals()){
            if(i != n){
                list.append(i);
            }
        };
        return [2,3,4];
    };*/
};
