module sender::Math{
    public fun sum(a:u64,b:u64):u64{
        a+b
    }

    public fun sumAs(a:u64,b:u8):u64{
         a + (b as u64)
    }


    public fun max(a:u64,b:u64):u64{
        if( a >= b){
            a
        }else{
            b
        }
    }
}