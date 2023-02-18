
script{
    use std::debug;
    use sender::Math as mm;
    
    fun test_as(a:u64,b:u64){
        debug::print(&mm::max(a,b));
    }
}