function plot_power_spectrum(pows, freq)
  % plot power spectrum without amplitude normalization
  plot(squeeze(freq), squeeze(pows));
end
