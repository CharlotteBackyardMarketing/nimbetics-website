import type { NextConfig } from "next";

const isProd = process.env.NODE_ENV === 'production' && process.env.GITHUB_PAGES === 'true';

const nextConfig: NextConfig = {
  output: 'export',
  trailingSlash: true,
  basePath: isProd ? '/nimbetics-website' : '',
  assetPrefix: isProd ? '/nimbetics-website' : '',
  images: {
    unoptimized: true,
  },
};

export default nextConfig;
