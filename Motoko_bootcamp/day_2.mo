import Text "mo:base/Text";
import Char "mo:base/Char";
actor {
    //chanllenge 1
    public func nat_to_nat8(n:Nat) :async Nat8{
        if (n>255){
            return 0;
        };
        return (Nat8.fromNat(n));
    }
    //chanllenge 2
    public func max_number_with_n_bits(n:Nat) :async Nat{
        return(2**n-1)
    }
    //Challenge 3
    public func decimal_to_bits(num : Nat): async Text{
        var text1:Text = "";
        var n:Nat = num;
        while ( n !=0 ){
            var text2:Text ="0";
            if (n % 2 == 1){
                text2 := "1";
            };
            text1 := Text.concat( text2 , text1);
            n /= 2;
        };
        return text1;
    };
    //Challenge 4:
    public func capitalize_character (c : Char): async Text {
        let uni:Nat32= Char.toNat32(c);
        let cha:Char= Char.fromNat32(uni-32);
        return(Char.toText(cha));
        
    };
    //Challenge 5:

};
