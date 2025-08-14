import { defineConfig } from 'astro/config';

// https://astro.build/config
export default defineConfig({
    site: 'https://example.com',
	server:{
		port: 3000,
		host: true
	}
});
