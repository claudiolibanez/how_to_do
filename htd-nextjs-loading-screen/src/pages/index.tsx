import React from 'react';
import Link from 'next/link';

import styles from '../styles/pages/Home.module.css';

const Home = () => {
  return (
    <div className={styles.container}>
      <Link href="/dashboard" passHref>
        <h1>Entrar</h1>
      </Link>
    </div>
  );
}

export default Home
