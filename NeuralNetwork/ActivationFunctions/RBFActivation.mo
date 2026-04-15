within NeuralNetwork.ActivationFunctions;
function RBFActivation
  extends ActivationFunction;
  
  input Real c "Centro della RBF";
  input Real sigma "Larghezza (sigma) della RBF";
  output Real phi "Valore della funzione di attivazione";
protected
  Real norm2;
algorithm
  // Calcolo della norma al quadrato tra x e il centro
  norm2 := sum((u - c).^2);
  // Funzione RBF gaussiana
  phi := exp(-0.5*norm2) / (sigma);
end RBFActivation;
