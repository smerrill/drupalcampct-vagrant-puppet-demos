class basic {

 File { owner => 0, group => 0, mode => 0644 }

 file { '/etc/motd':
   content => "
                        ``````      ```..-----.`                                
                  `.-::///////:--:::////////////:.`                             
              `.::////////////////////////////////:`                            
           `.://////////////////////////////////////.                           
         `-:////////////////////////////////////////:`                          
        `:///////////////////////////////////////////-````....`                 
       .://///////////////////////////////////////////////////:-`               
      `:////////////////////////////////////////////////////////:.              
      -///////////////////////////////////////////////////////////-`            
      -///////////////o+///////////////////////////////////////////:`           
      `://///////////yNms+////////////////////////////////////+/////-`          
       `:////////////+dNNdo///////////////////////////////+shdms/////.          
      `://////////////+hNNmy+/////////////////////////+oydmNNdho/////:`         
     .:////////////////+hNNNd+////////////////////+oydmNmmNNy+////////`         
   `-///////////////////+hNNNms///////////////+oshmNNdy+-oNNy/////////`         
  `://///////////////////+hNNNms///////////oshmNNdy+-`   oNNy////////:`         
 `:///////////////////////+dNNNNy//////+shdmNNNNs.`      oNNy////////-          
 ./////////////////////////omNNNNs///odmNNdhsyNNo        oNNmyo+////-`          
 .//////////////ohs/////////sNNNNms///shso+//sNNo        oNNmmNmdys/`           
 `//////////////sNNh+////////hNNNNmo/////////sNNo        oNNo-+sdmNmh+`         
 `://///////////+yNNds+//////+dNNNNd+////////sNNo        oNN+   `:mNN/          
  .://////////////ymNNdy+/////sNNNNNy////////sNNo        oNN+    .mNd`          
   .://////////////omNNNmdyo+++mNNNNmo///////sNNo        oNN+    .mNd`          
    `-//////////////+ymNNNNNmmdmNNNNNd///////yNNo   `````oNNo.```-mNd.````      
      `-://///////////+ydNNNNNNNNNNNNNs+ooossdNNdsyyhhhhdmNNmddddmNNNddhhhy+`   
        `.-:////////////+oydmNNNNNNNNNNmNNNNNNNNNNNNNNNNNNmmddhhyyssoo+++++.    
           ``..--://////////+osydNNNNNNNNNNNNNNNNmmhys+/:-..```                 
                 .//////////////sNNNNNNNNNNNmhs+:-``                            
                  .-////////////oNNNNNNNmho:.`                                  
                    `.::////////+mNNNNNN/`                                      
                        `........hNNNNNN+                                       
                                 sNNNNNNy                                       
                                 +NNNNNNh`                                      
                                 +NNNNNNd.                                      
                                 +NNNNNNm-                                      
                                `sNNNNNNNs                                      
                               `+NNNNNNNNNs.                                    
                               :sssssssssss+.                                   
                                                                                
Welcome to a Treehouse Agency virtual machine managed by Vagrant and Puppet.\n\n"
  }

  package { [ "htop", "bash-completion", "vim-enhanced" ]:
    ensure => installed,
    require => [Yumrepo["IUS"], Exec["noselinux_temporary"]]
  }

}
