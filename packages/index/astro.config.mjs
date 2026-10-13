import { defineConfig } from 'astro/config'

export default defineConfig({
  site: 'https://talks.watershed.technology',
  trailingSlash: 'never',
  outDir: './dist',
})
