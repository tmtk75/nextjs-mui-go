console.log(`NODE_ENV:`, process.env.NODE_ENV);

const isDev = () => process.env.NODE_ENV === "development";

module.exports = {
  basePath: isDev() ? undefined : "/nextjs",
};
