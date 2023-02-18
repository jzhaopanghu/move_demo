script{
    use std::signer;
    use std::debug;


    fun signer_test(sg:signer){
        let addr = signer::address_of(&sg);
        debug::print(&addr);
    }





}