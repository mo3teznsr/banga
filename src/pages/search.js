import { IonContent, IonHeader, IonPage, IonTitle, IonToolbar } from '@ionic/react';

const Search= () => {
    return (
      <IonPage>
        {/* <IonHeader>
          <IonToolbar>
            <IonTitle>Tab 2</IonTitle>
          </IonToolbar>
        </IonHeader> */}
        <IonContent fullscreen>
          
        <iframe src="https://banga.sd/home-search-result" style={{width:"100%",height:"100%",border:"none"}}></iframe>
          {/* <IonHeader collapse="condense">
            <IonToolbar>
              <        ,c;l m   ,mc,m.IonTitle size="large">Tab 2</IonTitle>
            </IonToolbar>
          </IonHeader>
          <ExploreContainer name="Tab 2 page" /> */}
        </IonContent>
      </IonPage>
    );
  };
  
  export default Search;