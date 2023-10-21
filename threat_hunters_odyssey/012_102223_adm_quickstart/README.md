# Episode 7 - ADM Tool Quickstart

TBD

### **Prerequisites**

Before we dive into the installation, let's ensure we have everything we need:

**1. go**: .

**2. Make**: .

**3. GitHub Account**: .


### **Installation Steps**

Let's proceed with the installation:

**Step 1: Access Fleet in Kibana**
   
   - Open Kibana and navigate to Fleet > Agents. Click on "Add agent."

**Step 2: Agent Policy Selection**
   
   - In the "Add agent" flyout, select an existing agent policy or create a new one. Fleet can generate a new enrollment token if you create a new policy.
   
   - Ensure "Enroll in Fleet" is selected.

**Step 3: Download and Install Elastic Agent**

   - Now, download, install, and enroll the Elastic Agent on your EC2 instance. Below are sample commands for different host operating systems:

     ```
     # For Linux (AMD)
     wget https://artifacts.elastic.co/downloads/beats/elastic-agent/elastic-agent-<version>-amd64.deb
     sudo dpkg -i elastic-agent-<version>-amd64.deb
     ```

     Make sure to replace `<version>` with the appropriate Elastic Agent version.

   - If enrolling in a Fleet Server with your organization's certificate, add the `--certificate-authorities` option to the command as per the in-product instructions.

**Step 4: Verification**
   
   - Confirm that Elastic Agent is installed and running by checking the Agents tab in Fleet.

That's it! You've successfully installed an Elastic Fleet-managed Elastic Agent on your AWS EC2 instance, and it's now ready to collect data for your threat hunting endeavors.

Stay tuned for more cybersecurity insights in "The Threat Hunter's Odyssey." Remember to like, subscribe, and share to stay updated with our journey into the world of threat detection and cybersecurity.

## My Videos

- Follow my YouTube channel for videos on this subject. 
- https://youtube.com/playlist?list=PLpF_8NEH9fv584-JzS5lnGSgZ6g9TgKoF&si=xu_MC_6VkPEAShdt

- Follow my Tiktok account for videos on this subject. 
- https://www.tiktok.com/@castillo_rod?lang=en

