 module sender::colletion{
    
    use std::vector;
    use std::signer;

    struct Item has store,drop{}

    struct Colletion has key,store{
        items:vector<Item>,
    }



    public fun start_collection(account:&signer){
        move_to<Colletion>(account,Colletion{
            items:vector::empty<Item>()

        })
    }

    public fun is_exists(addr:address):bool{
        exists<Colletion>(addr)
    }


    public fun add_item(account:&signer) acquires Colletion{
        let addr = signer::address_of(account);
        let coll = borrow_global_mut<Colletion>(addr);
        vector::push_back(&mut coll.items,Item{});
    }


    public fun item_size(account:&signer):u64 acquires Colletion{
        let addr = signer::address_of(account);
        let colletion = borrow_global<Colletion>(addr);
        vector::length(&colletion.items)
    }


    public fun destroy(account:&signer) acquires Colletion{
        let addr = signer::address_of(account);
        let coll = move_from<Colletion>(addr);
        let Colletion{items: _ } = coll;
    }
 }