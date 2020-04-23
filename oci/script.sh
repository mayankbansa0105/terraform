cid=$(oci iam compartment create --name CLICOMPARTMENT2 --description compartmentfromcli2 --compartment-id ocid1.tenancy.oc1..aaaaaaaagzeh5q4njeayms7hkbekvg5tlpmsx3vndmc2fltqwtftzjq7jbkq --query data.id --raw-output)
sleep 10
vcnid=$(oci network vcn create --display-name VCNCLI --cidr-block 10.0.0.0/16 --compartment-id $cid --query data.id --raw-output) 
sleep 10
echo $vcnid
subnet_id=$(oci network subnet create --display-name SubnetCLI --cidr-block 10.0.1.0/30 --vcn-id $vcnid --compartment-id $cid --query data.id --raw-output)
sleep 10
