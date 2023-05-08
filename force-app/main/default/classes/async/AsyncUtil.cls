public class AsyncUtil {
    

    /**
     * Create a static void method called boilWater
     * simply print boiling water 
     * Add @future annotation on top of the method
     */
    /**
     * @future will make a method as future method
     future method is always static void method 
     it can have parameters , the type can not be sObject 
     it can be any primitive types 
     like String, Integer , Double , Id and so on
     it can also be List of those types 
     */
    @future
    public static void boilWater(){
        System.debug('boiling water....'); 
    }


    @future
    public static void updateCurrentUserRoleToCFO(){

        Id userId = UserInfo.getUserId();
        User u = [SELECT Id, FirstName, Division FROM USER 
                    WHERE Id = :userId]; 
        // update User role to CFO 
        UserRole roleCFO = [SELECT Id,Name from UserRole Where Name='CFO']; 

        u.UserRoleId = roleCFO.Id ; 
        update u ; 

    }
}