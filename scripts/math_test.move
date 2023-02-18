

script{
    use std::debug;
    use sender::Math as mm;
    
    fun test_sum(a:u64,b:u64){
        let c = mm::sum(a,b);
        debug::print(&c);
    }


}