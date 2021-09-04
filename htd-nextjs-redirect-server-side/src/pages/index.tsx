import { GetServerSideProps } from "next";

const Home = () => {
  return (
    <></>
  );
}

export default Home

export const getServerSideProps: GetServerSideProps = async () => {
  
  return {
    redirect: {
      destination: '/login',
      permanent: false
    }
  }
}