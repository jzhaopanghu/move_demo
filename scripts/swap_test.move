script{
    use sender::Swap;
    use std::debug;
    use std::vector;

    fun swap_test(){
        let (a,b) = (10,20);
        Swap::swap(&mut a ,&mut b);
        debug::print(&a);
        debug::print(&b);
        let str = b"hello";
        let str2 = vector::empty<u64>();
        vector::push_back(&mut str2, 10);
        vector::push_back(&mut str2, 20);
        Swap::show(str);
        Swap::show(str2);

        

    }


}