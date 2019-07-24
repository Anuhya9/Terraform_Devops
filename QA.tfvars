
environment = "QA"

region = "ap-south-1"

availability_zones = [ "ap-south-1a",
                       "ap-south-1b",
                       "ap-south-1c"
                      ]

     
vpcs = { 
    name = "qa.example.io"
    cidr = "10.1.0.0/16"                  
      }        

                
    access_key = ""
    secret_key = ""


    private_subnets = [
      {
       name = "ap-south-1a.qa.example.io"
        cidr = "10.1.100.0/24"
        availability_zone = "ap-south-1a"
        tags = {
            Domain     = "qa.example.io"
            Purpose    = "Practice"
            SubnetType = "Private"
        }
      },
    {
        name = "ap-south-1b.qa.example.io"
        cidr = "10.1.101.0/24"
        availability_zone = "ap-south-1b"
        tags = {
            Domain     = "qa.example.io"
            Purpose    = "Practice"
            SubnetType = "Private"
        }
    } 
]

public_subnets = [
    {
        name = "utility-ap-south-1a.qa.example.io"
        cidr = "10.1.1.0/24"
        availability_zone = "ap-south-1a"
        tags = {
            Domain     = "qa.example.io"
            Purpose    = "Practice"
            SubnetType = "Public"
        }
    },
    {
        name = "utility-ap-south-1b.qa.example.io"
        cidr = "10.1.2.0/24"
        availability_zone = "ap-south-1b"
        tags = {
            Domain     = "qa.example.io"
            Purpose    = "Practice"
            SubnetType = "Public"
        }
    }
    
]