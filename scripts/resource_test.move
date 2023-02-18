script{

    use std::signer;
    use std::debug;
    use sender::colletion as coll;

    fun test(account : signer){
        let result = signer::address_of(&account);
        debug::print(&result);
        let r = coll::is_exists(result);
        debug::print(&r);
        if(r){
            coll::destroy(&account);
        };
        coll::start_collection(&account);
        let result = signer::address_of(&account);
        let res = coll::is_exists(result);
        debug::print(&res);
    }


}