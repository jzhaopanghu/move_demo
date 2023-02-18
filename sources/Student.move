module sender::Student{
    struct Student has drop{
        id:u64,
        age:u8,
        sex:bool
    }

    struct User<T1:copy + drop,T2:copy + drop,T3:copy + drop> has drop,copy {
        id:T1,
        age:T2,
        sex:T3
    }

    public fun new_user<T1:copy + drop,T2:copy + drop,T3:copy + drop>(id:T1,age:T2,sex:T3):User<T1,T2,T3>{
        User{
            id,
            age, 
            sex
        }
    } 
    public fun get_uid<T1:copy + drop,T2:copy + drop,T3:copy + drop>(us:User<T1,T2,T3>) :T1{
        return us.id
    }



    public fun new_student(sid:u64,sage:u8,ssex:bool):Student{
        Student{
            id:sid,
            age:sage,
            sex:ssex 
        }
    }
     public fun new_student2(id:u64,age:u8,sex:bool):Student{
        Student{
            id,
            age,
            sex 
        }
    }
    public fun get_sid(s:Student) :u64{
        return s.id
    }

}