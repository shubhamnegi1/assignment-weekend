def lambda_handler(event, context):
   # Connect to EC2
   #give proper access or role to your device
   instance_id = 'i-0a76f86eefcec00e1'
   ec2 = boto3.resource('ec2')
   #y = ec2.Instance(instance_id)
   instance=ec2.Instance(instance_id)
   metadata = {"Id": instance.id, "Platform": instance.platform, "Type": instance.instance_type, "Public IPv4":instance.public_ip_address, "AMI": instance.image.id,"State":instance.state}
   metadata = json.dumps(metadata)
   metadata = json.loads(metadata)
   print (metadata)
   
   print(metadata["Id"])
