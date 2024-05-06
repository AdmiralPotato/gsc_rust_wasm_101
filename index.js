fetch("./gsc_rust_wasm_101.wasm")
	.then((response) => response.arrayBuffer())
	.then((butter) => {
		console.log("butter", butter);
		WebAssembly.instantiate(butter).then((module) => {
			const { hello, add } = module.instance.exports;
			console.log("What is module?", module);
			const helloResult = hello();
			console.log("What is helloResult?", helloResult);
			const addResult = add(9000, 1);
			console.log("What is addResult?", addResult);
		});
	});
