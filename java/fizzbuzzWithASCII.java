public class fizzbuzzWithASCII{

    public static void main(String[] args){

        for(int i = 1; i < 16; i++){
            if(i % 3 == 0 && i % 5 == 0){
                System.out.println("                                       \n" +                                                                         
"@@@@@@@@  @@@  @@@@@@@@  @@@@@@@@  @@@@@@@   @@@  @@@  @@@@@@@@  @@@@@@@@ \n" + 
"@@@@@@@@  @@@  @@@@@@@@  @@@@@@@@  @@@@@@@@  @@@  @@@  @@@@@@@@  @@@@@@@@ \n" +
"@@!       @@!       @@!       @@!  @@!  @@@  @@!  @@@       @@!       @@! \n" + 
"!@!       !@!      !@!       !@!   !@   @!@  !@!  @!@      !@!       !@!  \n" + 
"@!!!:!    !!@     @!!       @!!    @!@!@!@   @!@  !@!     @!!       @!!   \n" + 
"!!!!!:    !!!    !!!       !!!     !!!@!!!!  !@!  !!!    !!!       !!!    \n" + 
"!!:       !!:   !!:       !!:      !!:  !!!  !!:  !!!   !!:       !!:     \n" + 
":!:       :!:  :!:       :!:       :!:  !:!  :!:  !:!  :!:       :!:     \n" +  
"::        ::   :: ::::   :: ::::   :: ::::  ::::: ::   :: ::::   :: ::::  \n" +
" :        :    : :: : :  : :: : :  :: : ::    : :  :   : :: : :  : :: : :");
            }
            else if(i % 3 == 0){
                System.out.println("                                   \n" +
"@@@@@@@@  @@@  @@@@@@@@  @@@@@@@@  \n" +
"@@@@@@@@  @@@  @@@@@@@@  @@@@@@@@  \n" +
"@@!       @@!       @@!       @@!  \n" +
"!@!       !@!      !@!       !@!   \n" +
"@!!!:!    !!@     @!!       @!!    \n" +
"!!!!!:    !!!    !!!       !!!     \n" +
"!!:       !!:   !!:       !!:      \n" +
":!:       :!:  :!:       :!:       \n" +
"::        ::   :: ::::   :: ::::   \n" +
" :        :    : :: : :  : :: : :");
            }
            else if(i % 5 == 0){
                System.out.println("                                       \n" + 
"@@@@@@@   @@@  @@@  @@@@@@@@  @@@@@@@@  \n" +
"@@@@@@@@  @@@  @@@  @@@@@@@@  @@@@@@@@  \n" +
"@@!  @@@  @@!  @@@       @@!       @@!  \n" +
"!@   @!@  !@!  @!@      !@!       !@!   \n" +
"@!@!@!@   @!@  !@!     @!!       @!!    \n" +
"!!!@!!!!  !@!  !!!    !!!       !!!     \n" +
"!!:  !!!  !!:  !!!   !!:       !!:      \n" +
":!:  !:!  :!:  !:!  :!:       :!:       \n" +
" :: ::::  ::::: :: :: ::::   :: ::::  \n" +
":: : ::    : :  :  : :: : :  : :: : :");

            }
            else{
                System.out.println(i);
            }
            
        }

    }

}