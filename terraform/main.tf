variable "REGION" {
  type        = string
  description = "Azure region"

  validation {
    condition     = contains(["item1", "item2", "item3"], var.test_variable)
    error_message = "Valid values for var: test_variable are (item1, item2, item3)."
  } 

variable "PYTHON_VERSION" {
  type        = string
  description = "Python version"

  validation {
    condition     = contains(["3.8", "3.9", "3.10", "3.11"], var.PYTHON_VERSION)
    error_message = "Valid values for your Python version are 3.8, 3.9, 3.10 and 3.11."
  } 

variable "SKU_TYPE" {
  type        = string
  description = "Virtual machine SKU"

  validation {
    condition     = contains(["F1", "D1", "B1", "B2", "B3", "S1", "S2", "S4", "P1v2", "P2v2", "P3v2", "P0v3", "P1v3", "P1mv3", "P2v3", "P2mv3", "P3v3", "P3mv3", "P4mv3", "P5mv3", "I1", "I2", "I3", "I1v2", "I1mv2", "I2mv2", "I3v2", "I3mv2", "I4v2", "I4mv2", "I5v2", "I5mv2", "I6v2"], var.test_variable)
    error_message = <<EOT

The available virtual machine options are:

    F1 - Shared cores (60 CPU minutes / day), 1 GB of RAM, 1 GB of storage (Free)
    D1 - Shared cores (240 CPU minutes / day), 1 GB of 1.00 GB (Free)
    
    B1 - 1 core, 1.75 GB of RAM, 10 GB of storage 
    B2 - 2 cores, 3.50 GB of RAM, 10 GB of storage
    B3 - 4 cores, 7 GB of RAM, 10 GB of storage
    
    S1 - 1 core, 1.75 GB of RAM, 50 GB of storage 
    S2 - 2 cores, 3.50 GB of RAM, 50 GB of storage 
    S4 - 4 cores, 7 GB of RAM, 50 GB of storage 
    
    P1v2 - 1 core, 3.50 GB of RAM, 250 GB of storage 
    P2v2 - 2 cores, 7 GB of RAM, 250 GB of storage 
    P3v2 - 4 cores, 14 GB of RAM, 250 GB of storage 
    
    P0v3 - 1 core, 4 GB of RAM, 250 GB of storage
    P1v3 - 2 cores, 8 GB of RAM, 250 GB of storage
    P1mv3 - 2 cores, 16 GB of RAM, 250 GB of storage
    P2v3 - 4 cores, 16 GB of RAM, 250 GB of storage
    P2mv3 - 4 cores, 32 GB of RAM, 250 GB of storage
    P3v3 - 8 cores, 32 GB of RAM, 250 GB of storage
    P3mv3 - 8 cores, 64 GB of RAM, 250 GB of storage
    P4mv3  - 16 cores, 128 GB of RAM, 250 GB of storage
    P5mv3 - 32 cores, 256 GB of RAM, 250 GB of storage
    
    I1 - 1 core, 3.50 GB of RAM, 1 TB of storage
    I2 - 2 cores, 7 GB of RAM, 1 TB of storage
    I3 - 3 core, 14 GB of RAM, 1 TB of storage
    
    I1v2 - 2 cores, 8 GB of RAM, 1 TB of storage     
    I1mv2 - 4 cores, 8 GB of RAM, 1 TB of storage     
    I2mv2 - 8 cores, 8 GB of RAM, 1 TB of storage     
    I3v2 - 16 cores, 8 GB of RAM, 1 TB of storage      
    I3mv2 - 32 cores, 8 GB of RAM, 1 TB of storage     
    I4v2 - 64 cores, 8 GB of RAM, 1 TB of storage
    I4mv2 - 16 cores, 128 GB of RAM, 1 TB of storage
    I5v2 - 32 cores, 128 GB of RAM, 1 TB of storage
    I5mv2 - 16 cores, 128 GB of RAM, 1 TB of storage
    I6v2 - 16 cores, 128 GB of RAM, 1 TB of storage

EOT
  } 


variable "APP_NAME" {
    type = string
    default = "foo"

    validation {
    # regex(...) fails if it cannot find a match
    condition     = can(regex("^[0-9A-Za-z]+$", var.application_name))
    error_message = "For the application_name value only a-z, A-Z and 0-9 are allowed."
  }
}
