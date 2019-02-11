module RascalScripts

import IO;
import lang::java::m3::Core;
import List;
import ValueIO;

// Read all JARs located in `jars` and
// serialize the corresponding M3 models
void buildAllM3s(loc jars) {
	for (f <- jars.ls, f.extension == "jar") {
		loc dest = jars + (f.file + ".m3");

		if (isFile(dest)) {
			println("<dest> exists. Skipping.");
			continue;
		}

		print("Creating M3 for <f>... ");
		M3 m = createM3FromJar(f);

		if (size(m.messages) > 0) {
			println("Unexpected messages: <m.messages>");
			continue;
		}

		writeBinaryValueFile(dest, m);
		println("Done.");
	}
}
