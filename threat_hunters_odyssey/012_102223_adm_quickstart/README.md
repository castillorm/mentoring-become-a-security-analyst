# Episode 7 - Quickstart Guide: Installing and Validating the "Attack-Defense Modeling CLI Tool" by Vinay Venkatesh

**Introduction:**
In the realm of cybersecurity and threat modeling, having the right tools at your disposal is essential. Vinay Venkatesh's "Attack-Defense Modeling CLI Tool" (ADM CLI Tool) is a powerful open-source command-line utility designed to process .adm files, adhering to attack-defense model language specifications. In this quickstart guide, we will walk you through the process of installing this valuable tool and validating its installation. Whether you're a seasoned cybersecurity professional or just starting in the field, this tool can streamline your threat modeling efforts.

**Prerequisites:**
Before diving into the installation process, ensure that you meet the following prerequisites:

- Administrator access on your laptop or desktop.
- Go programming language installed (download [here](https://golang.org/dl/)).
- Make utility installed (`make -version` to check).
- Git installed and a GitHub ID ready.
- Graphviz installed (use `brew install graphviz` for macOS).

**Installation Steps:**

1. **Create a Working Directory:**
   Start by creating a directory in your working or "dev" folder, where you'll set up the ADM CLI Tool.

2. **Clone the ADM Repository:**
   Perform a Git clone of the ADM repository from GitHub using the following command:
   ```
   git clone git@github.com:vinayprograms/adm.git
   ```

3. **Change to the "adm" Directory:**
   Navigate into the "adm" directory that you just cloned:
   ```
   cd adm
   ```

4. **Build the ADM CLI Tool:**
   Run the following command to build the ADM CLI Tool. This will create an "adm" binary in the "bin" directory:
   ```
   make build
   ```

5. **Verify Installation:**
   Confirm that the ADM CLI Tool is built correctly by executing it:
   ```
   ./bin/adm
   ```

**Validation:**
To validate that the ADM CLI Tool can parse a file, use the following command:
```
./bin/adm stat -a tests/examples/oauth/secrets-keys.adm
```
This will display information about the attacks contained in the specified .adm file.

**Generating Visualization:**
To generate a sample visualization, follow these steps:
1. Run the following commands:
   ```
   ./bin/adm stat -a tests/examples/oauth/access-tokens.adm
   ./bin/adm graph tests/examples/oauth/access-tokens.adm
   ```
2. Use Graphviz to generate a PNG visualization file (e.g., "foo.png"):
   ```
   dot -T png -o foo.png graphviz.dot
   ```

**Conclusion:**
Congratulations! You've successfully installed and validated the "Attack-Defense Modeling CLI Tool" by Vinay Venkatesh. This versatile tool can help you streamline threat modeling processes, correlate attacks and defenses, and visualize complex models. Explore its features and integrate it into your cybersecurity toolkit for enhanced threat analysis and defense planning.

To download the ADM CLI Tool, visit the [GitHub repository](https://github.com/vinayprograms/adm/tree/main). Start leveraging its capabilities to bolster your security efforts today!

## My Videos

- Follow my YouTube channel for videos on this subject. 
- https://youtube.com/playlist?list=PLpF_8NEH9fv584-JzS5lnGSgZ6g9TgKoF&si=xu_MC_6VkPEAShdt

- Follow my Tiktok account for videos on this subject. 
- https://www.tiktok.com/@castillo_rod?lang=en

