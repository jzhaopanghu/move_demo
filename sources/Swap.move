module sender::Swap{

    use std::debug;

    public fun swap(a:&mut u64,b:&mut u64){
        let s = *a;
        *a = *b;
        *b = s;
    }


    public fun show<T:drop>(a:T){
        debug::print(&a);
    }

}