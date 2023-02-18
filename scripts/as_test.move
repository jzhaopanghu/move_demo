
script{
    use std::debug;
    use sender::Math as mm;
    
    fun test_as(a:u64,b:u64){

        let d = (b as u8);
        let c = mm::sumAs(a,d);
        debug::print(&c);
    }
}