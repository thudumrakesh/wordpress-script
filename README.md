Deploy the wordpress with IAC(terraform)
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Github and Terraform (create clone job and build job) tools and apply Build periodically, poll scm and webhooks Build and deploy WordPress application in pipeline method by using Jenkins, Git, methods.
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

•	Login amazon console, Launch instance and access it through git bash.

•	Install terraform and aws cli and Jenkins and start and enable Jenkins.

•	Click on new item give the name as terraform.

•	In source code management select git paste and repository URL.

•	In Build environments select use secret text add access key and secret key in it. 
![image](https://github.com/thudumrakesh/wordpress-terraform-script/assets/144659414/3c94c73e-fce3-4765-b825-84f85693402b)


•	In execute shell give commands as 

    <terraform init>
     <terraform validate>
      <terraform apply –auto-apply>.
![image](https://github.com/thudumrakesh/wordpress-terraform-script/assets/144659414/47512e75-4068-4515-81e5-3ed98c15cb44)

      
•	Click on save and build now.

•	In console resource got created.

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ 
 
Build periodically:

•	Go back and in configure select build trigger in it select build periodically.

•	And schedule time and click on save.

•	After minute it starts building.
![image](https://github.com/thudumrakesh/wordpress-terraform-script/assets/144659414/84d614f5-d178-4568-a83c-286142551910)
![image](https://github.com/thudumrakesh/wordpress-terraform-script/assets/144659414/983fb4cb-d0d5-4e17-b943-3d4315121cde)




---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- 
 
Poll scm:
•	Go back and in configure select build trigger in it select poll scm.

•	And schedule time and click on save.

•	After changes made in git hub repo it starts building.

![image](https://github.com/thudumrakesh/wordpress-terraform-script/assets/144659414/87afdecb-034e-44c3-9a19-76cc5c28925e)
![image](https://github.com/thudumrakesh/wordpress-terraform-script/assets/144659414/c35fbd30-7976-48ea-b96b-d25b8c52d532)
![image](https://github.com/thudumrakesh/wordpress-terraform-script/assets/144659414/48ea8d87-dcf1-4d0b-832c-630d4dabe0d8)
![image](https://github.com/thudumrakesh/wordpress-terraform-script/assets/144659414/1abd47f9-9ef3-4318-b03a-c717efbcab06)





----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- 
Webhooks:

1.Login into git hub select the repo and click on setting on left we see webhooks option click on it, add webhook.

2.Then it opens a payload URL then give the Jenkins Ip address/git hub-webhook/ select content type as application/json select just the push event as then it creates a webhook. If any changes made in repo, it automatically build it as shown.
 
 ![image](https://github.com/thudumrakesh/wordpress-terraform-script/assets/144659414/2ecbb284-6119-44fa-b57f-1ec449fcdf16)
 ![image](https://github.com/thudumrakesh/wordpress-terraform-script/assets/144659414/97785555-3329-48bc-84b7-9d6a8b88df2e)


