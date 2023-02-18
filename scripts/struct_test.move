script{
    use std::debug;
    use sender::Student;


    fun s_test(){
        let s = Student::new_student(1000,10,true);
        let x = Student::get_sid(s);
        debug::print(&x);

        let u = Student::new_user(1000,10,true);
        let us = Student::get_uid(u);
        debug::print(&us);
    }


}