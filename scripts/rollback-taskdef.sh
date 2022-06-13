aws ecs list-task-definitions \
  --family-prefix "$family" \
  --query taskDefinitionArns \
  --sort DESC
  
 # eg $family=files_ecs_td
 
 aws ecs update-service \
  --cluster "$ecs_cluster_name" \
  --service "$ecs_service_name" \
  --task-definition "$task_definition_arn"
  
  #  FilesQL
  #  Files-Service
  #  arn:aws:ecs:us-east-1:015042944066:task-definition/files_ecs_td:4
