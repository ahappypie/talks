# Business Use: NextJS & the Filesystem-as-Router
<v-clicks text-sm depth="2">

* NextJS is a web framework, a tool engineers use to make developing software more productive, created by Vercel
* It uses the filesystem to organize all the routes within the application, if we have `anderson.ucla.edu`:
    * `app/pages/index.tsx` → `anderson.ucla.edu`
    * `app/pages/about.tsx` → `anderson.ucla.edu/about`
    * `app/pages/about/index.tsx` → `anderson.ucla.edu/about`
    * `app/pages/about/centers.tsx` → `anderson.ucla.edu/about/centers`
* Since NextJS makes reasoning about the structure of your output (the website) very easy, Vercel built a platform on top of it
* It automatically deploys any changes to a global network when connected to source control
* Vercel raised $300M Series F in 2025 at a $9.3B valuation 
* $340M in revenue, growing over 100% YoY, making it a **27x** multiple

</v-clicks>