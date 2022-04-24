import Head from "next/head";
import { Button, Typography } from "@mui/material";

export default function Home() {
  return (
    <div>
      <Head>
        <title>Create Next App</title>
        <link rel="icon" href="/favicon.ico" />
        <link
          rel="stylesheet"
          href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap"
        />
        <link
          rel="stylesheet"
          href="https://fonts.googleapis.com/icon?family=Material+Icons"
        />
      </Head>

      <main>
        <Typography variant="h1">MUI</Typography>
        <Button>OK</Button>
      </main>

      <footer></footer>
    </div>
  );
}
