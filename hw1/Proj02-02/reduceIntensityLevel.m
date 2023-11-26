function quantizedImage = reduceIntensityLevel(originalImage, intensityLevel)
    quantizedImage = originalImage./ (255 / (intensityLevel - 1)) * (255 / (intensityLevel - 1));
end