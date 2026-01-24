allprojects {
    repositories {
        maven {
            url = uri("https://mirrors.tencent.com/nexus/repository/maven-public/")
        }
        google {
            url = uri("https://mirrors.tencent.com/google/")
        }
        mavenCentral {
            url = uri("https://mirrors.tencent.com/nexus/repository/maven-central/")
        }
    }
}

val newBuildDir: Directory =
    rootProject.layout.buildDirectory
        .dir("../../build")
        .get()
rootProject.layout.buildDirectory.value(newBuildDir)

subprojects {
    val newSubprojectBuildDir: Directory = newBuildDir.dir(project.name)
    project.layout.buildDirectory.value(newSubprojectBuildDir)
}
subprojects {
    project.evaluationDependsOn(":app")
}

tasks.register<Delete>("clean") {
    delete(rootProject.layout.buildDirectory)
}
