<script lang="ts">
	import HeadComponent from "$lib/HeadComponent.svelte";
	const handleAnchorClick = (evt: Event) => {
		evt.preventDefault();
		const link = evt.currentTarget as HTMLAnchorElement;
		const anchorId = new URL(link.href).hash.replace("#", "");
		const anchor = document.getElementById(anchorId);
		window.scrollTo({
			top: anchor?.offsetTop,
			behavior: "smooth",
		});
	};
</script>

<HeadComponent
	data={{
		title: "bub.nvim",
		description: "Batman's Utility Belt (bub) for Neovim.",
	}}
/>

<div id="start" class="hero bg-base-200 min-h-screen">
	<div class="hero-content text-center">
		<div class="max-w-md">
			<img src="/logo.svg" alt="bub.nvim logo" class="m-5 mx-auto w-64" />
			<h1 class="text-5xl font-bold">bub.nvim</h1>
			<p class="py-6">Batman's Utility Belt (bub) for Neovim.</p>
			<a href="#get-involved" on:click={handleAnchorClick}
				><button class="btn btn-secondary mt-5">Get involved</button></a
			>
		</div>
	</div>
</div>
<div id="get-involved" class="hero bg-base-200 min-h-screen">
	<div class="hero-content text-center">
		<div class="max-w-md">
			<h1 class="text-5xl font-bold">Get involved ❤️</h1>
			<p class="py-6">bub.nvim is open-source and we welcome contributions.</p>
			<p>
				View the <a class="text-secondary" href="https://github.com/mistweaverco/bub.nvim">code.</a>
			</p>
		</div>
	</div>
</div>
