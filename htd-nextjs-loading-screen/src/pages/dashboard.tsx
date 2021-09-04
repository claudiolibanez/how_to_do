import React, { useState, useEffect } from 'react';

import styles from '../styles/pages/Dashboard.module.css';

import { Splash } from '../components/Splash';
import { AnimatePresence } from 'framer-motion';

const Dashboard = () => {
  const [isloading, setIsLoading] = useState<boolean>(true);

  useEffect(() => {
    const run = async () => {
      await Promise.resolve(); 
     
      setTimeout(() => setIsLoading(false), 5000);
    };

     run();
  }, []);

  return (
    <div>
      <AnimatePresence>
        { isloading && <Splash /> }
      </AnimatePresence>

      <div className={styles.container}>
        <h1>Hello World</h1>
      </div>
    </div>
  );
}

export default Dashboard;